# sandbox_telemetry_parse — 2026-10-27 08:49:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=424480 lines=942
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 937 |
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
| `chromeBrowserPssKb` | {'int': 937} |
| `chromeGpuPssKb` | {'int': 937} |
| `chromeOtherPssKb` | {'int': 937} |
| `chromeProcesses` | {'int': 937} |
| `chromeProfiles` | {'int': 937} |
| `chromeRendererMaxPssKb` | {'int': 937} |
| `chromeRendererPssKb` | {'int': 937} |
| `chromeRenderers` | {'int': 937} |
| `chromeTabs` | {'int': 937} |
| `chromeTabsProbedProfiles` | {'int': 937} |
| `chromeUtilityPssKb` | {'int': 937} |
| `desktopPssKb` | {'int': 937} |
| `hostPssKb` | {'int': 937} |
| `kind` | {'str': 937} |
| `memAvailableKb` | {'int': 937} |
| `memTotalKb` | {'int': 937} |
| `otherPssKb` | {'int': 937} |
| `processes` | {'int': 937} |
| `pssFallbackProcesses` | {'int': 937} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
