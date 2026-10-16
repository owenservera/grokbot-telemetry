# sandbox_telemetry_parse — 2026-10-16 14:42:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=543702 lines=2032
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1342 |
| `memory_sample` | 681 |
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
| `chromeBrowserPssKb` | {'int': 681} |
| `chromeGpuPssKb` | {'int': 681} |
| `chromeOtherPssKb` | {'int': 681} |
| `chromeProcesses` | {'int': 681} |
| `chromeProfiles` | {'int': 681} |
| `chromeRendererMaxPssKb` | {'int': 681} |
| `chromeRendererPssKb` | {'int': 681} |
| `chromeRenderers` | {'int': 681} |
| `chromeTabs` | {'int': 681} |
| `chromeTabsProbedProfiles` | {'int': 681} |
| `chromeUtilityPssKb` | {'int': 681} |
| `desktopPssKb` | {'int': 681} |
| `hostPssKb` | {'int': 681} |
| `kind` | {'str': 681} |
| `memAvailableKb` | {'int': 681} |
| `memTotalKb` | {'int': 681} |
| `otherPssKb` | {'int': 681} |
| `processes` | {'int': 681} |
| `pssFallbackProcesses` | {'int': 681} |

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
| `cpuMillicores` | {'int': 1339} |
| `display` | {'int': 1342} |
| `kind` | {'str': 1342} |
| `processes` | {'int': 1342} |
| `pssKb` | {'int': 1342} |
| `rendererMaxPssKb` | {'int': 1342} |
| `renderers` | {'int': 1342} |
| `tabs` | {'int': 1341} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
