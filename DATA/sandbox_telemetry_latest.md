# sandbox_telemetry_parse — 2026-10-26 23:01:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=189282 lines=422
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 417 |
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
| `chromeBrowserPssKb` | {'int': 417} |
| `chromeGpuPssKb` | {'int': 417} |
| `chromeOtherPssKb` | {'int': 417} |
| `chromeProcesses` | {'int': 417} |
| `chromeProfiles` | {'int': 417} |
| `chromeRendererMaxPssKb` | {'int': 417} |
| `chromeRendererPssKb` | {'int': 417} |
| `chromeRenderers` | {'int': 417} |
| `chromeTabs` | {'int': 417} |
| `chromeTabsProbedProfiles` | {'int': 417} |
| `chromeUtilityPssKb` | {'int': 417} |
| `desktopPssKb` | {'int': 417} |
| `hostPssKb` | {'int': 417} |
| `kind` | {'str': 417} |
| `memAvailableKb` | {'int': 417} |
| `memTotalKb` | {'int': 417} |
| `otherPssKb` | {'int': 417} |
| `processes` | {'int': 417} |
| `pssFallbackProcesses` | {'int': 417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
