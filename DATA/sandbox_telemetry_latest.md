# sandbox_telemetry_parse — 2026-10-26 20:19:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=120426 lines=270
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 265 |
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
| `chromeBrowserPssKb` | {'int': 265} |
| `chromeGpuPssKb` | {'int': 265} |
| `chromeOtherPssKb` | {'int': 265} |
| `chromeProcesses` | {'int': 265} |
| `chromeProfiles` | {'int': 265} |
| `chromeRendererMaxPssKb` | {'int': 265} |
| `chromeRendererPssKb` | {'int': 265} |
| `chromeRenderers` | {'int': 265} |
| `chromeTabs` | {'int': 265} |
| `chromeTabsProbedProfiles` | {'int': 265} |
| `chromeUtilityPssKb` | {'int': 265} |
| `desktopPssKb` | {'int': 265} |
| `hostPssKb` | {'int': 265} |
| `kind` | {'str': 265} |
| `memAvailableKb` | {'int': 265} |
| `memTotalKb` | {'int': 265} |
| `otherPssKb` | {'int': 265} |
| `processes` | {'int': 265} |
| `pssFallbackProcesses` | {'int': 265} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
