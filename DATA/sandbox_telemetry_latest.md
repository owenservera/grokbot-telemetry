# sandbox_telemetry_parse — 2026-10-27 09:46:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=448436 lines=995
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 990 |
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
| `chromeBrowserPssKb` | {'int': 990} |
| `chromeGpuPssKb` | {'int': 990} |
| `chromeOtherPssKb` | {'int': 990} |
| `chromeProcesses` | {'int': 990} |
| `chromeProfiles` | {'int': 990} |
| `chromeRendererMaxPssKb` | {'int': 990} |
| `chromeRendererPssKb` | {'int': 990} |
| `chromeRenderers` | {'int': 990} |
| `chromeTabs` | {'int': 990} |
| `chromeTabsProbedProfiles` | {'int': 990} |
| `chromeUtilityPssKb` | {'int': 990} |
| `desktopPssKb` | {'int': 990} |
| `hostPssKb` | {'int': 990} |
| `kind` | {'str': 990} |
| `memAvailableKb` | {'int': 990} |
| `memTotalKb` | {'int': 990} |
| `otherPssKb` | {'int': 990} |
| `processes` | {'int': 990} |
| `pssFallbackProcesses` | {'int': 990} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
