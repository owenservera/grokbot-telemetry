# sandbox_telemetry_parse — 2026-10-16 19:43:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=773267 lines=2890
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1914 |
| `memory_sample` | 967 |
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
| `chromeBrowserPssKb` | {'int': 967} |
| `chromeGpuPssKb` | {'int': 967} |
| `chromeOtherPssKb` | {'int': 967} |
| `chromeProcesses` | {'int': 967} |
| `chromeProfiles` | {'int': 967} |
| `chromeRendererMaxPssKb` | {'int': 967} |
| `chromeRendererPssKb` | {'int': 967} |
| `chromeRenderers` | {'int': 967} |
| `chromeTabs` | {'int': 967} |
| `chromeTabsProbedProfiles` | {'int': 967} |
| `chromeUtilityPssKb` | {'int': 967} |
| `desktopPssKb` | {'int': 967} |
| `hostPssKb` | {'int': 967} |
| `kind` | {'str': 967} |
| `memAvailableKb` | {'int': 967} |
| `memTotalKb` | {'int': 967} |
| `otherPssKb` | {'int': 967} |
| `processes` | {'int': 967} |
| `pssFallbackProcesses` | {'int': 967} |

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
| `cpuMillicores` | {'int': 1911} |
| `display` | {'int': 1914} |
| `kind` | {'str': 1914} |
| `processes` | {'int': 1914} |
| `pssKb` | {'int': 1914} |
| `rendererMaxPssKb` | {'int': 1914} |
| `renderers` | {'int': 1914} |
| `tabs` | {'int': 1913} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
