# sandbox_telemetry_parse — 2026-11-09 22:09:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=859825 lines=1908
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1899 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1899} |
| `chromeGpuPssKb` | {'int': 1899} |
| `chromeOtherPssKb` | {'int': 1899} |
| `chromeProcesses` | {'int': 1899} |
| `chromeProfiles` | {'int': 1899} |
| `chromeRendererMaxPssKb` | {'int': 1899} |
| `chromeRendererPssKb` | {'int': 1899} |
| `chromeRenderers` | {'int': 1899} |
| `chromeTabs` | {'int': 1899} |
| `chromeTabsProbedProfiles` | {'int': 1899} |
| `chromeUtilityPssKb` | {'int': 1899} |
| `desktopPssKb` | {'int': 1899} |
| `hostPssKb` | {'int': 1899} |
| `kind` | {'str': 1899} |
| `memAvailableKb` | {'int': 1899} |
| `memTotalKb` | {'int': 1899} |
| `otherPssKb` | {'int': 1899} |
| `processes` | {'int': 1899} |
| `pssFallbackProcesses` | {'int': 1899} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
