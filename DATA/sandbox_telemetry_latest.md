# sandbox_telemetry_parse — 2026-10-16 08:10:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=265191 lines=991
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 648 |
| `memory_sample` | 334 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 334} |
| `chromeGpuPssKb` | {'int': 334} |
| `chromeOtherPssKb` | {'int': 334} |
| `chromeProcesses` | {'int': 334} |
| `chromeProfiles` | {'int': 334} |
| `chromeRendererMaxPssKb` | {'int': 334} |
| `chromeRendererPssKb` | {'int': 334} |
| `chromeRenderers` | {'int': 334} |
| `chromeTabs` | {'int': 334} |
| `chromeTabsProbedProfiles` | {'int': 334} |
| `chromeUtilityPssKb` | {'int': 334} |
| `desktopPssKb` | {'int': 334} |
| `hostPssKb` | {'int': 334} |
| `kind` | {'str': 334} |
| `memAvailableKb` | {'int': 334} |
| `memTotalKb` | {'int': 334} |
| `otherPssKb` | {'int': 334} |
| `processes` | {'int': 334} |
| `pssFallbackProcesses` | {'int': 334} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 645} |
| `display` | {'int': 648} |
| `kind` | {'str': 648} |
| `processes` | {'int': 648} |
| `pssKb` | {'int': 648} |
| `rendererMaxPssKb` | {'int': 648} |
| `renderers` | {'int': 648} |
| `tabs` | {'int': 647} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
