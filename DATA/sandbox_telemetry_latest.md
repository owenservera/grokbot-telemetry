# sandbox_telemetry_parse — 2026-10-13 04:51:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=832587 lines=1975
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1753 |
| `chrome_profile_sample` | 214 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1753} |
| `chromeGpuPssKb` | {'int': 1753} |
| `chromeOtherPssKb` | {'int': 1753} |
| `chromeProcesses` | {'int': 1753} |
| `chromeProfiles` | {'int': 1753} |
| `chromeRendererMaxPssKb` | {'int': 1753} |
| `chromeRendererPssKb` | {'int': 1753} |
| `chromeRenderers` | {'int': 1753} |
| `chromeTabs` | {'int': 1753} |
| `chromeTabsProbedProfiles` | {'int': 1753} |
| `chromeUtilityPssKb` | {'int': 1753} |
| `desktopPssKb` | {'int': 1753} |
| `hostPssKb` | {'int': 1753} |
| `kind` | {'str': 1753} |
| `memAvailableKb` | {'int': 1753} |
| `memTotalKb` | {'int': 1753} |
| `otherPssKb` | {'int': 1753} |
| `processes` | {'int': 1753} |
| `pssFallbackProcesses` | {'int': 1753} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 213} |
| `display` | {'int': 214} |
| `kind` | {'str': 214} |
| `processes` | {'int': 214} |
| `pssKb` | {'int': 214} |
| `rendererMaxPssKb` | {'int': 214} |
| `renderers` | {'int': 214} |
| `tabs` | {'int': 214} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
