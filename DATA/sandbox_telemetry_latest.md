# sandbox_telemetry_parse — 2026-10-26 23:45:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=207402 lines=462
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 457 |
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
| `chromeBrowserPssKb` | {'int': 457} |
| `chromeGpuPssKb` | {'int': 457} |
| `chromeOtherPssKb` | {'int': 457} |
| `chromeProcesses` | {'int': 457} |
| `chromeProfiles` | {'int': 457} |
| `chromeRendererMaxPssKb` | {'int': 457} |
| `chromeRendererPssKb` | {'int': 457} |
| `chromeRenderers` | {'int': 457} |
| `chromeTabs` | {'int': 457} |
| `chromeTabsProbedProfiles` | {'int': 457} |
| `chromeUtilityPssKb` | {'int': 457} |
| `desktopPssKb` | {'int': 457} |
| `hostPssKb` | {'int': 457} |
| `kind` | {'str': 457} |
| `memAvailableKb` | {'int': 457} |
| `memTotalKb` | {'int': 457} |
| `otherPssKb` | {'int': 457} |
| `processes` | {'int': 457} |
| `pssFallbackProcesses` | {'int': 457} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
