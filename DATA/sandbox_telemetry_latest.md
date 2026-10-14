# sandbox_telemetry_parse — 2026-10-14 14:33:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=336206 lines=748
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 743 |
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
| `chromeBrowserPssKb` | {'int': 743} |
| `chromeGpuPssKb` | {'int': 743} |
| `chromeOtherPssKb` | {'int': 743} |
| `chromeProcesses` | {'int': 743} |
| `chromeProfiles` | {'int': 743} |
| `chromeRendererMaxPssKb` | {'int': 743} |
| `chromeRendererPssKb` | {'int': 743} |
| `chromeRenderers` | {'int': 743} |
| `chromeTabs` | {'int': 743} |
| `chromeTabsProbedProfiles` | {'int': 743} |
| `chromeUtilityPssKb` | {'int': 743} |
| `desktopPssKb` | {'int': 743} |
| `hostPssKb` | {'int': 743} |
| `kind` | {'str': 743} |
| `memAvailableKb` | {'int': 743} |
| `memTotalKb` | {'int': 743} |
| `otherPssKb` | {'int': 743} |
| `processes` | {'int': 743} |
| `pssFallbackProcesses` | {'int': 743} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
