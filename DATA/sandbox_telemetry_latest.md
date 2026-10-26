# sandbox_telemetry_parse — 2026-10-26 19:08:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=89169 lines=201
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 196 |
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
| `chromeBrowserPssKb` | {'int': 196} |
| `chromeGpuPssKb` | {'int': 196} |
| `chromeOtherPssKb` | {'int': 196} |
| `chromeProcesses` | {'int': 196} |
| `chromeProfiles` | {'int': 196} |
| `chromeRendererMaxPssKb` | {'int': 196} |
| `chromeRendererPssKb` | {'int': 196} |
| `chromeRenderers` | {'int': 196} |
| `chromeTabs` | {'int': 196} |
| `chromeTabsProbedProfiles` | {'int': 196} |
| `chromeUtilityPssKb` | {'int': 196} |
| `desktopPssKb` | {'int': 196} |
| `hostPssKb` | {'int': 196} |
| `kind` | {'str': 196} |
| `memAvailableKb` | {'int': 196} |
| `memTotalKb` | {'int': 196} |
| `otherPssKb` | {'int': 196} |
| `processes` | {'int': 196} |
| `pssFallbackProcesses` | {'int': 196} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
