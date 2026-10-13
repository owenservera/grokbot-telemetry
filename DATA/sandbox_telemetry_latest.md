# sandbox_telemetry_parse — 2026-10-13 03:46:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=796290 lines=1861
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1696 |
| `chrome_profile_sample` | 157 |
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
| `chromeBrowserPssKb` | {'int': 1696} |
| `chromeGpuPssKb` | {'int': 1696} |
| `chromeOtherPssKb` | {'int': 1696} |
| `chromeProcesses` | {'int': 1696} |
| `chromeProfiles` | {'int': 1696} |
| `chromeRendererMaxPssKb` | {'int': 1696} |
| `chromeRendererPssKb` | {'int': 1696} |
| `chromeRenderers` | {'int': 1696} |
| `chromeTabs` | {'int': 1696} |
| `chromeTabsProbedProfiles` | {'int': 1696} |
| `chromeUtilityPssKb` | {'int': 1696} |
| `desktopPssKb` | {'int': 1696} |
| `hostPssKb` | {'int': 1696} |
| `kind` | {'str': 1696} |
| `memAvailableKb` | {'int': 1696} |
| `memTotalKb` | {'int': 1696} |
| `otherPssKb` | {'int': 1696} |
| `processes` | {'int': 1696} |
| `pssFallbackProcesses` | {'int': 1696} |

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
| `cpuMillicores` | {'int': 156} |
| `display` | {'int': 157} |
| `kind` | {'str': 157} |
| `processes` | {'int': 157} |
| `pssKb` | {'int': 157} |
| `rendererMaxPssKb` | {'int': 157} |
| `renderers` | {'int': 157} |
| `tabs` | {'int': 157} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
