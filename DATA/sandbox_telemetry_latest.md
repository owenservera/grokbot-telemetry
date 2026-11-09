# sandbox_telemetry_parse — 2026-11-09 22:57:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=875205 lines=1942
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1933 |
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
| `chromeBrowserPssKb` | {'int': 1933} |
| `chromeGpuPssKb` | {'int': 1933} |
| `chromeOtherPssKb` | {'int': 1933} |
| `chromeProcesses` | {'int': 1933} |
| `chromeProfiles` | {'int': 1933} |
| `chromeRendererMaxPssKb` | {'int': 1933} |
| `chromeRendererPssKb` | {'int': 1933} |
| `chromeRenderers` | {'int': 1933} |
| `chromeTabs` | {'int': 1933} |
| `chromeTabsProbedProfiles` | {'int': 1933} |
| `chromeUtilityPssKb` | {'int': 1933} |
| `desktopPssKb` | {'int': 1933} |
| `hostPssKb` | {'int': 1933} |
| `kind` | {'str': 1933} |
| `memAvailableKb` | {'int': 1933} |
| `memTotalKb` | {'int': 1933} |
| `otherPssKb` | {'int': 1933} |
| `processes` | {'int': 1933} |
| `pssFallbackProcesses` | {'int': 1933} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
