# sandbox_telemetry_parse — 2026-10-27 12:43:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=519556 lines=1152
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1147 |
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
| `chromeBrowserPssKb` | {'int': 1147} |
| `chromeGpuPssKb` | {'int': 1147} |
| `chromeOtherPssKb` | {'int': 1147} |
| `chromeProcesses` | {'int': 1147} |
| `chromeProfiles` | {'int': 1147} |
| `chromeRendererMaxPssKb` | {'int': 1147} |
| `chromeRendererPssKb` | {'int': 1147} |
| `chromeRenderers` | {'int': 1147} |
| `chromeTabs` | {'int': 1147} |
| `chromeTabsProbedProfiles` | {'int': 1147} |
| `chromeUtilityPssKb` | {'int': 1147} |
| `desktopPssKb` | {'int': 1147} |
| `hostPssKb` | {'int': 1147} |
| `kind` | {'str': 1147} |
| `memAvailableKb` | {'int': 1147} |
| `memTotalKb` | {'int': 1147} |
| `otherPssKb` | {'int': 1147} |
| `processes` | {'int': 1147} |
| `pssFallbackProcesses` | {'int': 1147} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
