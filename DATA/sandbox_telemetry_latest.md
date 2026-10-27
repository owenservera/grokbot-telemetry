# sandbox_telemetry_parse — 2026-10-27 10:39:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=471085 lines=1045
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1040 |
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
| `chromeBrowserPssKb` | {'int': 1040} |
| `chromeGpuPssKb` | {'int': 1040} |
| `chromeOtherPssKb` | {'int': 1040} |
| `chromeProcesses` | {'int': 1040} |
| `chromeProfiles` | {'int': 1040} |
| `chromeRendererMaxPssKb` | {'int': 1040} |
| `chromeRendererPssKb` | {'int': 1040} |
| `chromeRenderers` | {'int': 1040} |
| `chromeTabs` | {'int': 1040} |
| `chromeTabsProbedProfiles` | {'int': 1040} |
| `chromeUtilityPssKb` | {'int': 1040} |
| `desktopPssKb` | {'int': 1040} |
| `hostPssKb` | {'int': 1040} |
| `kind` | {'str': 1040} |
| `memAvailableKb` | {'int': 1040} |
| `memTotalKb` | {'int': 1040} |
| `otherPssKb` | {'int': 1040} |
| `processes` | {'int': 1040} |
| `pssFallbackProcesses` | {'int': 1040} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
