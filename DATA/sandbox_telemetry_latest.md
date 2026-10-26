# sandbox_telemetry_parse — 2026-10-26 22:24:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=173880 lines=388
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 383 |
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
| `chromeBrowserPssKb` | {'int': 383} |
| `chromeGpuPssKb` | {'int': 383} |
| `chromeOtherPssKb` | {'int': 383} |
| `chromeProcesses` | {'int': 383} |
| `chromeProfiles` | {'int': 383} |
| `chromeRendererMaxPssKb` | {'int': 383} |
| `chromeRendererPssKb` | {'int': 383} |
| `chromeRenderers` | {'int': 383} |
| `chromeTabs` | {'int': 383} |
| `chromeTabsProbedProfiles` | {'int': 383} |
| `chromeUtilityPssKb` | {'int': 383} |
| `desktopPssKb` | {'int': 383} |
| `hostPssKb` | {'int': 383} |
| `kind` | {'str': 383} |
| `memAvailableKb` | {'int': 383} |
| `memTotalKb` | {'int': 383} |
| `otherPssKb` | {'int': 383} |
| `processes` | {'int': 383} |
| `pssFallbackProcesses` | {'int': 383} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
