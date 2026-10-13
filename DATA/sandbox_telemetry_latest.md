# sandbox_telemetry_parse — 2026-10-13 07:37:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=919769 lines=2249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1890 |
| `chrome_profile_sample` | 351 |
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
| `chromeBrowserPssKb` | {'int': 1890} |
| `chromeGpuPssKb` | {'int': 1890} |
| `chromeOtherPssKb` | {'int': 1890} |
| `chromeProcesses` | {'int': 1890} |
| `chromeProfiles` | {'int': 1890} |
| `chromeRendererMaxPssKb` | {'int': 1890} |
| `chromeRendererPssKb` | {'int': 1890} |
| `chromeRenderers` | {'int': 1890} |
| `chromeTabs` | {'int': 1890} |
| `chromeTabsProbedProfiles` | {'int': 1890} |
| `chromeUtilityPssKb` | {'int': 1890} |
| `desktopPssKb` | {'int': 1890} |
| `hostPssKb` | {'int': 1890} |
| `kind` | {'str': 1890} |
| `memAvailableKb` | {'int': 1890} |
| `memTotalKb` | {'int': 1890} |
| `otherPssKb` | {'int': 1890} |
| `processes` | {'int': 1890} |
| `pssFallbackProcesses` | {'int': 1890} |

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
| `cpuMillicores` | {'int': 350} |
| `display` | {'int': 351} |
| `kind` | {'str': 351} |
| `processes` | {'int': 351} |
| `pssKb` | {'int': 351} |
| `rendererMaxPssKb` | {'int': 351} |
| `renderers` | {'int': 351} |
| `tabs` | {'int': 351} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
