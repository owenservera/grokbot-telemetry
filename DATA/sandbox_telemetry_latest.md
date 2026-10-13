# sandbox_telemetry_parse — 2026-10-13 20:56:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1220751 lines=3193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2362 |
| `chrome_profile_sample` | 823 |
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
| `chromeBrowserPssKb` | {'int': 2362} |
| `chromeGpuPssKb` | {'int': 2362} |
| `chromeOtherPssKb` | {'int': 2362} |
| `chromeProcesses` | {'int': 2362} |
| `chromeProfiles` | {'int': 2362} |
| `chromeRendererMaxPssKb` | {'int': 2362} |
| `chromeRendererPssKb` | {'int': 2362} |
| `chromeRenderers` | {'int': 2362} |
| `chromeTabs` | {'int': 2362} |
| `chromeTabsProbedProfiles` | {'int': 2362} |
| `chromeUtilityPssKb` | {'int': 2362} |
| `desktopPssKb` | {'int': 2362} |
| `hostPssKb` | {'int': 2362} |
| `kind` | {'str': 2362} |
| `memAvailableKb` | {'int': 2362} |
| `memTotalKb` | {'int': 2362} |
| `otherPssKb` | {'int': 2362} |
| `processes` | {'int': 2362} |
| `pssFallbackProcesses` | {'int': 2362} |

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
| `cpuMillicores` | {'int': 822} |
| `display` | {'int': 823} |
| `kind` | {'str': 823} |
| `processes` | {'int': 823} |
| `pssKb` | {'int': 823} |
| `rendererMaxPssKb` | {'int': 823} |
| `renderers` | {'int': 823} |
| `tabs` | {'int': 823} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
