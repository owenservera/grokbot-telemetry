# sandbox_telemetry_parse — 2026-10-27 07:11:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=386512 lines=858
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 853 |
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
| `chromeBrowserPssKb` | {'int': 853} |
| `chromeGpuPssKb` | {'int': 853} |
| `chromeOtherPssKb` | {'int': 853} |
| `chromeProcesses` | {'int': 853} |
| `chromeProfiles` | {'int': 853} |
| `chromeRendererMaxPssKb` | {'int': 853} |
| `chromeRendererPssKb` | {'int': 853} |
| `chromeRenderers` | {'int': 853} |
| `chromeTabs` | {'int': 853} |
| `chromeTabsProbedProfiles` | {'int': 853} |
| `chromeUtilityPssKb` | {'int': 853} |
| `desktopPssKb` | {'int': 853} |
| `hostPssKb` | {'int': 853} |
| `kind` | {'str': 853} |
| `memAvailableKb` | {'int': 853} |
| `memTotalKb` | {'int': 853} |
| `otherPssKb` | {'int': 853} |
| `processes` | {'int': 853} |
| `pssFallbackProcesses` | {'int': 853} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
