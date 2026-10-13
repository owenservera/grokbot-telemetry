# sandbox_telemetry_parse — 2026-10-14 00:24:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1327997 lines=3529
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2530 |
| `chrome_profile_sample` | 991 |
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
| `chromeBrowserPssKb` | {'int': 2530} |
| `chromeGpuPssKb` | {'int': 2530} |
| `chromeOtherPssKb` | {'int': 2530} |
| `chromeProcesses` | {'int': 2530} |
| `chromeProfiles` | {'int': 2530} |
| `chromeRendererMaxPssKb` | {'int': 2530} |
| `chromeRendererPssKb` | {'int': 2530} |
| `chromeRenderers` | {'int': 2530} |
| `chromeTabs` | {'int': 2530} |
| `chromeTabsProbedProfiles` | {'int': 2530} |
| `chromeUtilityPssKb` | {'int': 2530} |
| `desktopPssKb` | {'int': 2530} |
| `hostPssKb` | {'int': 2530} |
| `kind` | {'str': 2530} |
| `memAvailableKb` | {'int': 2530} |
| `memTotalKb` | {'int': 2530} |
| `otherPssKb` | {'int': 2530} |
| `processes` | {'int': 2530} |
| `pssFallbackProcesses` | {'int': 2530} |

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
| `cpuMillicores` | {'int': 990} |
| `display` | {'int': 991} |
| `kind` | {'str': 991} |
| `processes` | {'int': 991} |
| `pssKb` | {'int': 991} |
| `rendererMaxPssKb` | {'int': 991} |
| `renderers` | {'int': 991} |
| `tabs` | {'int': 991} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
