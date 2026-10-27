# sandbox_telemetry_parse — 2026-10-27 09:06:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=431712 lines=958
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 953 |
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
| `chromeBrowserPssKb` | {'int': 953} |
| `chromeGpuPssKb` | {'int': 953} |
| `chromeOtherPssKb` | {'int': 953} |
| `chromeProcesses` | {'int': 953} |
| `chromeProfiles` | {'int': 953} |
| `chromeRendererMaxPssKb` | {'int': 953} |
| `chromeRendererPssKb` | {'int': 953} |
| `chromeRenderers` | {'int': 953} |
| `chromeTabs` | {'int': 953} |
| `chromeTabsProbedProfiles` | {'int': 953} |
| `chromeUtilityPssKb` | {'int': 953} |
| `desktopPssKb` | {'int': 953} |
| `hostPssKb` | {'int': 953} |
| `kind` | {'str': 953} |
| `memAvailableKb` | {'int': 953} |
| `memTotalKb` | {'int': 953} |
| `otherPssKb` | {'int': 953} |
| `processes` | {'int': 953} |
| `pssFallbackProcesses` | {'int': 953} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
