# sandbox_telemetry_parse — 2026-10-26 16:14:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=13065 lines=33
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 28 |
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
| `chromeBrowserPssKb` | {'int': 28} |
| `chromeGpuPssKb` | {'int': 28} |
| `chromeOtherPssKb` | {'int': 28} |
| `chromeProcesses` | {'int': 28} |
| `chromeProfiles` | {'int': 28} |
| `chromeRendererMaxPssKb` | {'int': 28} |
| `chromeRendererPssKb` | {'int': 28} |
| `chromeRenderers` | {'int': 28} |
| `chromeTabs` | {'int': 28} |
| `chromeTabsProbedProfiles` | {'int': 28} |
| `chromeUtilityPssKb` | {'int': 28} |
| `desktopPssKb` | {'int': 28} |
| `hostPssKb` | {'int': 28} |
| `kind` | {'str': 28} |
| `memAvailableKb` | {'int': 28} |
| `memTotalKb` | {'int': 28} |
| `otherPssKb` | {'int': 28} |
| `processes` | {'int': 28} |
| `pssFallbackProcesses` | {'int': 28} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
