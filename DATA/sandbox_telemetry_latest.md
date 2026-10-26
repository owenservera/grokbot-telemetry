# sandbox_telemetry_parse — 2026-10-26 18:37:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=76032 lines=172
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 167 |
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
| `chromeBrowserPssKb` | {'int': 167} |
| `chromeGpuPssKb` | {'int': 167} |
| `chromeOtherPssKb` | {'int': 167} |
| `chromeProcesses` | {'int': 167} |
| `chromeProfiles` | {'int': 167} |
| `chromeRendererMaxPssKb` | {'int': 167} |
| `chromeRendererPssKb` | {'int': 167} |
| `chromeRenderers` | {'int': 167} |
| `chromeTabs` | {'int': 167} |
| `chromeTabsProbedProfiles` | {'int': 167} |
| `chromeUtilityPssKb` | {'int': 167} |
| `desktopPssKb` | {'int': 167} |
| `hostPssKb` | {'int': 167} |
| `kind` | {'str': 167} |
| `memAvailableKb` | {'int': 167} |
| `memTotalKb` | {'int': 167} |
| `otherPssKb` | {'int': 167} |
| `processes` | {'int': 167} |
| `pssFallbackProcesses` | {'int': 167} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
