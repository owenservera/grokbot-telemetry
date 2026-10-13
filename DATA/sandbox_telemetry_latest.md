# sandbox_telemetry_parse — 2026-10-13 21:04:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1222029 lines=3197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2364 |
| `chrome_profile_sample` | 825 |
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
| `chromeBrowserPssKb` | {'int': 2364} |
| `chromeGpuPssKb` | {'int': 2364} |
| `chromeOtherPssKb` | {'int': 2364} |
| `chromeProcesses` | {'int': 2364} |
| `chromeProfiles` | {'int': 2364} |
| `chromeRendererMaxPssKb` | {'int': 2364} |
| `chromeRendererPssKb` | {'int': 2364} |
| `chromeRenderers` | {'int': 2364} |
| `chromeTabs` | {'int': 2364} |
| `chromeTabsProbedProfiles` | {'int': 2364} |
| `chromeUtilityPssKb` | {'int': 2364} |
| `desktopPssKb` | {'int': 2364} |
| `hostPssKb` | {'int': 2364} |
| `kind` | {'str': 2364} |
| `memAvailableKb` | {'int': 2364} |
| `memTotalKb` | {'int': 2364} |
| `otherPssKb` | {'int': 2364} |
| `processes` | {'int': 2364} |
| `pssFallbackProcesses` | {'int': 2364} |

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
| `cpuMillicores` | {'int': 824} |
| `display` | {'int': 825} |
| `kind` | {'str': 825} |
| `processes` | {'int': 825} |
| `pssKb` | {'int': 825} |
| `rendererMaxPssKb` | {'int': 825} |
| `renderers` | {'int': 825} |
| `tabs` | {'int': 825} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
