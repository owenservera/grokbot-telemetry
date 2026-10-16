# sandbox_telemetry_parse — 2026-10-16 05:01:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=117590 lines=439
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 280 |
| `memory_sample` | 150 |
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
| `chromeBrowserPssKb` | {'int': 150} |
| `chromeGpuPssKb` | {'int': 150} |
| `chromeOtherPssKb` | {'int': 150} |
| `chromeProcesses` | {'int': 150} |
| `chromeProfiles` | {'int': 150} |
| `chromeRendererMaxPssKb` | {'int': 150} |
| `chromeRendererPssKb` | {'int': 150} |
| `chromeRenderers` | {'int': 150} |
| `chromeTabs` | {'int': 150} |
| `chromeTabsProbedProfiles` | {'int': 150} |
| `chromeUtilityPssKb` | {'int': 150} |
| `desktopPssKb` | {'int': 150} |
| `hostPssKb` | {'int': 150} |
| `kind` | {'str': 150} |
| `memAvailableKb` | {'int': 150} |
| `memTotalKb` | {'int': 150} |
| `otherPssKb` | {'int': 150} |
| `processes` | {'int': 150} |
| `pssFallbackProcesses` | {'int': 150} |

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
| `cpuMillicores` | {'int': 277} |
| `display` | {'int': 280} |
| `kind` | {'str': 280} |
| `processes` | {'int': 280} |
| `pssKb` | {'int': 280} |
| `rendererMaxPssKb` | {'int': 280} |
| `renderers` | {'int': 280} |
| `tabs` | {'int': 279} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
