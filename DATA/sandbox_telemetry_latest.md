# sandbox_telemetry_parse — 2026-10-13 22:45:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1268005 lines=3341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2436 |
| `chrome_profile_sample` | 897 |
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
| `chromeBrowserPssKb` | {'int': 2436} |
| `chromeGpuPssKb` | {'int': 2436} |
| `chromeOtherPssKb` | {'int': 2436} |
| `chromeProcesses` | {'int': 2436} |
| `chromeProfiles` | {'int': 2436} |
| `chromeRendererMaxPssKb` | {'int': 2436} |
| `chromeRendererPssKb` | {'int': 2436} |
| `chromeRenderers` | {'int': 2436} |
| `chromeTabs` | {'int': 2436} |
| `chromeTabsProbedProfiles` | {'int': 2436} |
| `chromeUtilityPssKb` | {'int': 2436} |
| `desktopPssKb` | {'int': 2436} |
| `hostPssKb` | {'int': 2436} |
| `kind` | {'str': 2436} |
| `memAvailableKb` | {'int': 2436} |
| `memTotalKb` | {'int': 2436} |
| `otherPssKb` | {'int': 2436} |
| `processes` | {'int': 2436} |
| `pssFallbackProcesses` | {'int': 2436} |

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
| `cpuMillicores` | {'int': 896} |
| `display` | {'int': 897} |
| `kind` | {'str': 897} |
| `processes` | {'int': 897} |
| `pssKb` | {'int': 897} |
| `rendererMaxPssKb` | {'int': 897} |
| `renderers` | {'int': 897} |
| `tabs` | {'int': 897} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
