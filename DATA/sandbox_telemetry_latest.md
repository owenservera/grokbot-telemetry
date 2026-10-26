# sandbox_telemetry_parse — 2026-10-26 17:57:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=57912 lines=132
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 127 |
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
| `chromeBrowserPssKb` | {'int': 127} |
| `chromeGpuPssKb` | {'int': 127} |
| `chromeOtherPssKb` | {'int': 127} |
| `chromeProcesses` | {'int': 127} |
| `chromeProfiles` | {'int': 127} |
| `chromeRendererMaxPssKb` | {'int': 127} |
| `chromeRendererPssKb` | {'int': 127} |
| `chromeRenderers` | {'int': 127} |
| `chromeTabs` | {'int': 127} |
| `chromeTabsProbedProfiles` | {'int': 127} |
| `chromeUtilityPssKb` | {'int': 127} |
| `desktopPssKb` | {'int': 127} |
| `hostPssKb` | {'int': 127} |
| `kind` | {'str': 127} |
| `memAvailableKb` | {'int': 127} |
| `memTotalKb` | {'int': 127} |
| `otherPssKb` | {'int': 127} |
| `processes` | {'int': 127} |
| `pssFallbackProcesses` | {'int': 127} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
