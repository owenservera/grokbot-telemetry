# sandbox_telemetry_parse — 2026-10-27 04:08:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=311480 lines=692
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 687 |
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
| `chromeBrowserPssKb` | {'int': 687} |
| `chromeGpuPssKb` | {'int': 687} |
| `chromeOtherPssKb` | {'int': 687} |
| `chromeProcesses` | {'int': 687} |
| `chromeProfiles` | {'int': 687} |
| `chromeRendererMaxPssKb` | {'int': 687} |
| `chromeRendererPssKb` | {'int': 687} |
| `chromeRenderers` | {'int': 687} |
| `chromeTabs` | {'int': 687} |
| `chromeTabsProbedProfiles` | {'int': 687} |
| `chromeUtilityPssKb` | {'int': 687} |
| `desktopPssKb` | {'int': 687} |
| `hostPssKb` | {'int': 687} |
| `kind` | {'str': 687} |
| `memAvailableKb` | {'int': 687} |
| `memTotalKb` | {'int': 687} |
| `otherPssKb` | {'int': 687} |
| `processes` | {'int': 687} |
| `pssFallbackProcesses` | {'int': 687} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
