# sandbox_telemetry_parse — 2026-10-14 17:40:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=403554 lines=897
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 892 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 892} |
| `chromeGpuPssKb` | {'int': 892} |
| `chromeOtherPssKb` | {'int': 892} |
| `chromeProcesses` | {'int': 892} |
| `chromeProfiles` | {'int': 892} |
| `chromeRendererMaxPssKb` | {'int': 892} |
| `chromeRendererPssKb` | {'int': 892} |
| `chromeRenderers` | {'int': 892} |
| `chromeTabs` | {'int': 892} |
| `chromeTabsProbedProfiles` | {'int': 892} |
| `chromeUtilityPssKb` | {'int': 892} |
| `desktopPssKb` | {'int': 892} |
| `hostPssKb` | {'int': 892} |
| `kind` | {'str': 892} |
| `memAvailableKb` | {'int': 892} |
| `memTotalKb` | {'int': 892} |
| `otherPssKb` | {'int': 892} |
| `processes` | {'int': 892} |
| `pssFallbackProcesses` | {'int': 892} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
