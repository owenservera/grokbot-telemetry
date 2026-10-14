# sandbox_telemetry_parse — 2026-10-14 19:50:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=456890 lines=1015
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1010 |
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
| `chromeBrowserPssKb` | {'int': 1010} |
| `chromeGpuPssKb` | {'int': 1010} |
| `chromeOtherPssKb` | {'int': 1010} |
| `chromeProcesses` | {'int': 1010} |
| `chromeProfiles` | {'int': 1010} |
| `chromeRendererMaxPssKb` | {'int': 1010} |
| `chromeRendererPssKb` | {'int': 1010} |
| `chromeRenderers` | {'int': 1010} |
| `chromeTabs` | {'int': 1010} |
| `chromeTabsProbedProfiles` | {'int': 1010} |
| `chromeUtilityPssKb` | {'int': 1010} |
| `desktopPssKb` | {'int': 1010} |
| `hostPssKb` | {'int': 1010} |
| `kind` | {'str': 1010} |
| `memAvailableKb` | {'int': 1010} |
| `memTotalKb` | {'int': 1010} |
| `otherPssKb` | {'int': 1010} |
| `processes` | {'int': 1010} |
| `pssFallbackProcesses` | {'int': 1010} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
