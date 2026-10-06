# sandbox_telemetry_parse — 2026-10-06 10:58:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=328514 lines=725
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 720 |
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
| `chromeBrowserPssKb` | {'int': 720} |
| `chromeGpuPssKb` | {'int': 720} |
| `chromeOtherPssKb` | {'int': 720} |
| `chromeProcesses` | {'int': 720} |
| `chromeProfiles` | {'int': 720} |
| `chromeRendererMaxPssKb` | {'int': 720} |
| `chromeRendererPssKb` | {'int': 720} |
| `chromeRenderers` | {'int': 720} |
| `chromeTabs` | {'int': 720} |
| `chromeTabsProbedProfiles` | {'int': 720} |
| `chromeUtilityPssKb` | {'int': 720} |
| `desktopPssKb` | {'int': 720} |
| `hostPssKb` | {'int': 720} |
| `kind` | {'str': 720} |
| `memAvailableKb` | {'int': 720} |
| `memTotalKb` | {'int': 720} |
| `otherPssKb` | {'int': 720} |
| `processes` | {'int': 720} |
| `pssFallbackProcesses` | {'int': 720} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
