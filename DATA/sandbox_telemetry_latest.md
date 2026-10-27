# sandbox_telemetry_parse — 2026-10-27 06:04:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=360296 lines=800
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 795 |
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
| `chromeBrowserPssKb` | {'int': 795} |
| `chromeGpuPssKb` | {'int': 795} |
| `chromeOtherPssKb` | {'int': 795} |
| `chromeProcesses` | {'int': 795} |
| `chromeProfiles` | {'int': 795} |
| `chromeRendererMaxPssKb` | {'int': 795} |
| `chromeRendererPssKb` | {'int': 795} |
| `chromeRenderers` | {'int': 795} |
| `chromeTabs` | {'int': 795} |
| `chromeTabsProbedProfiles` | {'int': 795} |
| `chromeUtilityPssKb` | {'int': 795} |
| `desktopPssKb` | {'int': 795} |
| `hostPssKb` | {'int': 795} |
| `kind` | {'str': 795} |
| `memAvailableKb` | {'int': 795} |
| `memTotalKb` | {'int': 795} |
| `otherPssKb` | {'int': 795} |
| `processes` | {'int': 795} |
| `pssFallbackProcesses` | {'int': 795} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
