# sandbox_telemetry_parse — 2026-10-13 03:05:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=780373 lines=1811
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1671 |
| `chrome_profile_sample` | 132 |
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
| `chromeBrowserPssKb` | {'int': 1671} |
| `chromeGpuPssKb` | {'int': 1671} |
| `chromeOtherPssKb` | {'int': 1671} |
| `chromeProcesses` | {'int': 1671} |
| `chromeProfiles` | {'int': 1671} |
| `chromeRendererMaxPssKb` | {'int': 1671} |
| `chromeRendererPssKb` | {'int': 1671} |
| `chromeRenderers` | {'int': 1671} |
| `chromeTabs` | {'int': 1671} |
| `chromeTabsProbedProfiles` | {'int': 1671} |
| `chromeUtilityPssKb` | {'int': 1671} |
| `desktopPssKb` | {'int': 1671} |
| `hostPssKb` | {'int': 1671} |
| `kind` | {'str': 1671} |
| `memAvailableKb` | {'int': 1671} |
| `memTotalKb` | {'int': 1671} |
| `otherPssKb` | {'int': 1671} |
| `processes` | {'int': 1671} |
| `pssFallbackProcesses` | {'int': 1671} |

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
| `cpuMillicores` | {'int': 131} |
| `display` | {'int': 132} |
| `kind` | {'str': 132} |
| `processes` | {'int': 132} |
| `pssKb` | {'int': 132} |
| `rendererMaxPssKb` | {'int': 132} |
| `renderers` | {'int': 132} |
| `tabs` | {'int': 132} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
