# sandbox_telemetry_parse — 2026-10-14 23:28:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=541866 lines=1203
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1198 |
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
| `chromeBrowserPssKb` | {'int': 1198} |
| `chromeGpuPssKb` | {'int': 1198} |
| `chromeOtherPssKb` | {'int': 1198} |
| `chromeProcesses` | {'int': 1198} |
| `chromeProfiles` | {'int': 1198} |
| `chromeRendererMaxPssKb` | {'int': 1198} |
| `chromeRendererPssKb` | {'int': 1198} |
| `chromeRenderers` | {'int': 1198} |
| `chromeTabs` | {'int': 1198} |
| `chromeTabsProbedProfiles` | {'int': 1198} |
| `chromeUtilityPssKb` | {'int': 1198} |
| `desktopPssKb` | {'int': 1198} |
| `hostPssKb` | {'int': 1198} |
| `kind` | {'str': 1198} |
| `memAvailableKb` | {'int': 1198} |
| `memTotalKb` | {'int': 1198} |
| `otherPssKb` | {'int': 1198} |
| `processes` | {'int': 1198} |
| `pssFallbackProcesses` | {'int': 1198} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
