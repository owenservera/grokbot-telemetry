# sandbox_telemetry_parse — 2026-10-27 08:45:50 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=422672 lines=938
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 933 |
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
| `chromeBrowserPssKb` | {'int': 933} |
| `chromeGpuPssKb` | {'int': 933} |
| `chromeOtherPssKb` | {'int': 933} |
| `chromeProcesses` | {'int': 933} |
| `chromeProfiles` | {'int': 933} |
| `chromeRendererMaxPssKb` | {'int': 933} |
| `chromeRendererPssKb` | {'int': 933} |
| `chromeRenderers` | {'int': 933} |
| `chromeTabs` | {'int': 933} |
| `chromeTabsProbedProfiles` | {'int': 933} |
| `chromeUtilityPssKb` | {'int': 933} |
| `desktopPssKb` | {'int': 933} |
| `hostPssKb` | {'int': 933} |
| `kind` | {'str': 933} |
| `memAvailableKb` | {'int': 933} |
| `memTotalKb` | {'int': 933} |
| `otherPssKb` | {'int': 933} |
| `processes` | {'int': 933} |
| `pssFallbackProcesses` | {'int': 933} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
