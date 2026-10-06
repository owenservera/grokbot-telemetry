# sandbox_telemetry_parse — 2026-10-06 02:25:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=95954 lines=215
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 210 |
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
| `chromeBrowserPssKb` | {'int': 210} |
| `chromeGpuPssKb` | {'int': 210} |
| `chromeOtherPssKb` | {'int': 210} |
| `chromeProcesses` | {'int': 210} |
| `chromeProfiles` | {'int': 210} |
| `chromeRendererMaxPssKb` | {'int': 210} |
| `chromeRendererPssKb` | {'int': 210} |
| `chromeRenderers` | {'int': 210} |
| `chromeTabs` | {'int': 210} |
| `chromeTabsProbedProfiles` | {'int': 210} |
| `chromeUtilityPssKb` | {'int': 210} |
| `desktopPssKb` | {'int': 210} |
| `hostPssKb` | {'int': 210} |
| `kind` | {'str': 210} |
| `memAvailableKb` | {'int': 210} |
| `memTotalKb` | {'int': 210} |
| `otherPssKb` | {'int': 210} |
| `processes` | {'int': 210} |
| `pssFallbackProcesses` | {'int': 210} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
