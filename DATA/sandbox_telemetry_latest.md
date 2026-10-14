# sandbox_telemetry_parse — 2026-10-14 23:10:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=536442 lines=1191
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1186 |
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
| `chromeBrowserPssKb` | {'int': 1186} |
| `chromeGpuPssKb` | {'int': 1186} |
| `chromeOtherPssKb` | {'int': 1186} |
| `chromeProcesses` | {'int': 1186} |
| `chromeProfiles` | {'int': 1186} |
| `chromeRendererMaxPssKb` | {'int': 1186} |
| `chromeRendererPssKb` | {'int': 1186} |
| `chromeRenderers` | {'int': 1186} |
| `chromeTabs` | {'int': 1186} |
| `chromeTabsProbedProfiles` | {'int': 1186} |
| `chromeUtilityPssKb` | {'int': 1186} |
| `desktopPssKb` | {'int': 1186} |
| `hostPssKb` | {'int': 1186} |
| `kind` | {'str': 1186} |
| `memAvailableKb` | {'int': 1186} |
| `memTotalKb` | {'int': 1186} |
| `otherPssKb` | {'int': 1186} |
| `processes` | {'int': 1186} |
| `pssFallbackProcesses` | {'int': 1186} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
