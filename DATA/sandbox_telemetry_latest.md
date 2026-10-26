# sandbox_telemetry_parse — 2026-10-26 18:58:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=85092 lines=192
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 187 |
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
| `chromeBrowserPssKb` | {'int': 187} |
| `chromeGpuPssKb` | {'int': 187} |
| `chromeOtherPssKb` | {'int': 187} |
| `chromeProcesses` | {'int': 187} |
| `chromeProfiles` | {'int': 187} |
| `chromeRendererMaxPssKb` | {'int': 187} |
| `chromeRendererPssKb` | {'int': 187} |
| `chromeRenderers` | {'int': 187} |
| `chromeTabs` | {'int': 187} |
| `chromeTabsProbedProfiles` | {'int': 187} |
| `chromeUtilityPssKb` | {'int': 187} |
| `desktopPssKb` | {'int': 187} |
| `hostPssKb` | {'int': 187} |
| `kind` | {'str': 187} |
| `memAvailableKb` | {'int': 187} |
| `memTotalKb` | {'int': 187} |
| `otherPssKb` | {'int': 187} |
| `processes` | {'int': 187} |
| `pssFallbackProcesses` | {'int': 187} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
