# sandbox_telemetry_parse — 2026-10-13 23:59:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1312045 lines=3479
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2505 |
| `chrome_profile_sample` | 966 |
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
| `chromeBrowserPssKb` | {'int': 2505} |
| `chromeGpuPssKb` | {'int': 2505} |
| `chromeOtherPssKb` | {'int': 2505} |
| `chromeProcesses` | {'int': 2505} |
| `chromeProfiles` | {'int': 2505} |
| `chromeRendererMaxPssKb` | {'int': 2505} |
| `chromeRendererPssKb` | {'int': 2505} |
| `chromeRenderers` | {'int': 2505} |
| `chromeTabs` | {'int': 2505} |
| `chromeTabsProbedProfiles` | {'int': 2505} |
| `chromeUtilityPssKb` | {'int': 2505} |
| `desktopPssKb` | {'int': 2505} |
| `hostPssKb` | {'int': 2505} |
| `kind` | {'str': 2505} |
| `memAvailableKb` | {'int': 2505} |
| `memTotalKb` | {'int': 2505} |
| `otherPssKb` | {'int': 2505} |
| `processes` | {'int': 2505} |
| `pssFallbackProcesses` | {'int': 2505} |

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
| `cpuMillicores` | {'int': 965} |
| `display` | {'int': 966} |
| `kind` | {'str': 966} |
| `processes` | {'int': 966} |
| `pssKb` | {'int': 966} |
| `rendererMaxPssKb` | {'int': 966} |
| `renderers` | {'int': 966} |
| `tabs` | {'int': 966} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
