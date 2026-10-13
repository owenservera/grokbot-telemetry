# sandbox_telemetry_parse — 2026-10-13 12:50:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1087288 lines=2775
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2153 |
| `chrome_profile_sample` | 614 |
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
| `chromeBrowserPssKb` | {'int': 2153} |
| `chromeGpuPssKb` | {'int': 2153} |
| `chromeOtherPssKb` | {'int': 2153} |
| `chromeProcesses` | {'int': 2153} |
| `chromeProfiles` | {'int': 2153} |
| `chromeRendererMaxPssKb` | {'int': 2153} |
| `chromeRendererPssKb` | {'int': 2153} |
| `chromeRenderers` | {'int': 2153} |
| `chromeTabs` | {'int': 2153} |
| `chromeTabsProbedProfiles` | {'int': 2153} |
| `chromeUtilityPssKb` | {'int': 2153} |
| `desktopPssKb` | {'int': 2153} |
| `hostPssKb` | {'int': 2153} |
| `kind` | {'str': 2153} |
| `memAvailableKb` | {'int': 2153} |
| `memTotalKb` | {'int': 2153} |
| `otherPssKb` | {'int': 2153} |
| `processes` | {'int': 2153} |
| `pssFallbackProcesses` | {'int': 2153} |

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
| `cpuMillicores` | {'int': 613} |
| `display` | {'int': 614} |
| `kind` | {'str': 614} |
| `processes` | {'int': 614} |
| `pssKb` | {'int': 614} |
| `rendererMaxPssKb` | {'int': 614} |
| `renderers` | {'int': 614} |
| `tabs` | {'int': 614} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
