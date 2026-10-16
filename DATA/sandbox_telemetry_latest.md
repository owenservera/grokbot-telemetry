# sandbox_telemetry_parse — 2026-10-16 13:34:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=491523 lines=1837
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1212 |
| `memory_sample` | 616 |
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
| `chromeBrowserPssKb` | {'int': 616} |
| `chromeGpuPssKb` | {'int': 616} |
| `chromeOtherPssKb` | {'int': 616} |
| `chromeProcesses` | {'int': 616} |
| `chromeProfiles` | {'int': 616} |
| `chromeRendererMaxPssKb` | {'int': 616} |
| `chromeRendererPssKb` | {'int': 616} |
| `chromeRenderers` | {'int': 616} |
| `chromeTabs` | {'int': 616} |
| `chromeTabsProbedProfiles` | {'int': 616} |
| `chromeUtilityPssKb` | {'int': 616} |
| `desktopPssKb` | {'int': 616} |
| `hostPssKb` | {'int': 616} |
| `kind` | {'str': 616} |
| `memAvailableKb` | {'int': 616} |
| `memTotalKb` | {'int': 616} |
| `otherPssKb` | {'int': 616} |
| `processes` | {'int': 616} |
| `pssFallbackProcesses` | {'int': 616} |

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
| `cpuMillicores` | {'int': 1209} |
| `display` | {'int': 1212} |
| `kind` | {'str': 1212} |
| `processes` | {'int': 1212} |
| `pssKb` | {'int': 1212} |
| `rendererMaxPssKb` | {'int': 1212} |
| `renderers` | {'int': 1212} |
| `tabs` | {'int': 1211} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
