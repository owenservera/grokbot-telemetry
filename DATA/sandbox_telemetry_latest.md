# sandbox_telemetry_parse — 2026-10-13 08:15:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=940766 lines=2315
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1923 |
| `chrome_profile_sample` | 384 |
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
| `chromeBrowserPssKb` | {'int': 1923} |
| `chromeGpuPssKb` | {'int': 1923} |
| `chromeOtherPssKb` | {'int': 1923} |
| `chromeProcesses` | {'int': 1923} |
| `chromeProfiles` | {'int': 1923} |
| `chromeRendererMaxPssKb` | {'int': 1923} |
| `chromeRendererPssKb` | {'int': 1923} |
| `chromeRenderers` | {'int': 1923} |
| `chromeTabs` | {'int': 1923} |
| `chromeTabsProbedProfiles` | {'int': 1923} |
| `chromeUtilityPssKb` | {'int': 1923} |
| `desktopPssKb` | {'int': 1923} |
| `hostPssKb` | {'int': 1923} |
| `kind` | {'str': 1923} |
| `memAvailableKb` | {'int': 1923} |
| `memTotalKb` | {'int': 1923} |
| `otherPssKb` | {'int': 1923} |
| `processes` | {'int': 1923} |
| `pssFallbackProcesses` | {'int': 1923} |

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
| `cpuMillicores` | {'int': 383} |
| `display` | {'int': 384} |
| `kind` | {'str': 384} |
| `processes` | {'int': 384} |
| `pssKb` | {'int': 384} |
| `rendererMaxPssKb` | {'int': 384} |
| `renderers` | {'int': 384} |
| `tabs` | {'int': 384} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
