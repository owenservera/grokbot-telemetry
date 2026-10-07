# sandbox_telemetry_parse — 2026-10-07 09:19:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=932437 lines=2049
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2044 |
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
| `chromeBrowserPssKb` | {'int': 2044} |
| `chromeGpuPssKb` | {'int': 2044} |
| `chromeOtherPssKb` | {'int': 2044} |
| `chromeProcesses` | {'int': 2044} |
| `chromeProfiles` | {'int': 2044} |
| `chromeRendererMaxPssKb` | {'int': 2044} |
| `chromeRendererPssKb` | {'int': 2044} |
| `chromeRenderers` | {'int': 2044} |
| `chromeTabs` | {'int': 2044} |
| `chromeTabsProbedProfiles` | {'int': 2044} |
| `chromeUtilityPssKb` | {'int': 2044} |
| `desktopPssKb` | {'int': 2044} |
| `hostPssKb` | {'int': 2044} |
| `kind` | {'str': 2044} |
| `memAvailableKb` | {'int': 2044} |
| `memTotalKb` | {'int': 2044} |
| `otherPssKb` | {'int': 2044} |
| `processes` | {'int': 2044} |
| `pssFallbackProcesses` | {'int': 2044} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
