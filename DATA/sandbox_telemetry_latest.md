# sandbox_telemetry_parse — 2026-10-27 12:48:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=521821 lines=1157
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1152 |
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
| `chromeBrowserPssKb` | {'int': 1152} |
| `chromeGpuPssKb` | {'int': 1152} |
| `chromeOtherPssKb` | {'int': 1152} |
| `chromeProcesses` | {'int': 1152} |
| `chromeProfiles` | {'int': 1152} |
| `chromeRendererMaxPssKb` | {'int': 1152} |
| `chromeRendererPssKb` | {'int': 1152} |
| `chromeRenderers` | {'int': 1152} |
| `chromeTabs` | {'int': 1152} |
| `chromeTabsProbedProfiles` | {'int': 1152} |
| `chromeUtilityPssKb` | {'int': 1152} |
| `desktopPssKb` | {'int': 1152} |
| `hostPssKb` | {'int': 1152} |
| `kind` | {'str': 1152} |
| `memAvailableKb` | {'int': 1152} |
| `memTotalKb` | {'int': 1152} |
| `otherPssKb` | {'int': 1152} |
| `processes` | {'int': 1152} |
| `pssFallbackProcesses` | {'int': 1152} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
