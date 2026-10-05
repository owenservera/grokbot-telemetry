# sandbox_telemetry_parse — 2026-10-06 01:57:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=84554 lines=190
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 185 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 185} |
| `chromeGpuPssKb` | {'int': 185} |
| `chromeOtherPssKb` | {'int': 185} |
| `chromeProcesses` | {'int': 185} |
| `chromeProfiles` | {'int': 185} |
| `chromeRendererMaxPssKb` | {'int': 185} |
| `chromeRendererPssKb` | {'int': 185} |
| `chromeRenderers` | {'int': 185} |
| `chromeTabs` | {'int': 185} |
| `chromeTabsProbedProfiles` | {'int': 185} |
| `chromeUtilityPssKb` | {'int': 185} |
| `desktopPssKb` | {'int': 185} |
| `hostPssKb` | {'int': 185} |
| `kind` | {'str': 185} |
| `memAvailableKb` | {'int': 185} |
| `memTotalKb` | {'int': 185} |
| `otherPssKb` | {'int': 185} |
| `processes` | {'int': 185} |
| `pssFallbackProcesses` | {'int': 185} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
