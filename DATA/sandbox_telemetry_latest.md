# sandbox_telemetry_parse — 2026-11-27 08:07:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=319054 lines=712
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 704 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 704} |
| `chromeGpuPssKb` | {'int': 704} |
| `chromeOtherPssKb` | {'int': 704} |
| `chromeProcesses` | {'int': 704} |
| `chromeProfiles` | {'int': 704} |
| `chromeRendererMaxPssKb` | {'int': 704} |
| `chromeRendererPssKb` | {'int': 704} |
| `chromeRenderers` | {'int': 704} |
| `chromeTabs` | {'int': 704} |
| `chromeTabsProbedProfiles` | {'int': 704} |
| `chromeUtilityPssKb` | {'int': 704} |
| `desktopPssKb` | {'int': 704} |
| `hostPssKb` | {'int': 704} |
| `kind` | {'str': 704} |
| `memAvailableKb` | {'int': 704} |
| `memTotalKb` | {'int': 704} |
| `otherPssKb` | {'int': 704} |
| `processes` | {'int': 704} |
| `pssFallbackProcesses` | {'int': 704} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
