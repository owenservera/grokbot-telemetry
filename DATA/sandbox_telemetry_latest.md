# sandbox_telemetry_parse — 2026-10-27 09:26:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=439848 lines=976
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 971 |
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
| `chromeBrowserPssKb` | {'int': 971} |
| `chromeGpuPssKb` | {'int': 971} |
| `chromeOtherPssKb` | {'int': 971} |
| `chromeProcesses` | {'int': 971} |
| `chromeProfiles` | {'int': 971} |
| `chromeRendererMaxPssKb` | {'int': 971} |
| `chromeRendererPssKb` | {'int': 971} |
| `chromeRenderers` | {'int': 971} |
| `chromeTabs` | {'int': 971} |
| `chromeTabsProbedProfiles` | {'int': 971} |
| `chromeUtilityPssKb` | {'int': 971} |
| `desktopPssKb` | {'int': 971} |
| `hostPssKb` | {'int': 971} |
| `kind` | {'str': 971} |
| `memAvailableKb` | {'int': 971} |
| `memTotalKb` | {'int': 971} |
| `otherPssKb` | {'int': 971} |
| `processes` | {'int': 971} |
| `pssFallbackProcesses` | {'int': 971} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
