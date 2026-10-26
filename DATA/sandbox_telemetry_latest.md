# sandbox_telemetry_parse — 2026-10-26 19:28:46 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=98229 lines=221
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 216 |
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
| `chromeBrowserPssKb` | {'int': 216} |
| `chromeGpuPssKb` | {'int': 216} |
| `chromeOtherPssKb` | {'int': 216} |
| `chromeProcesses` | {'int': 216} |
| `chromeProfiles` | {'int': 216} |
| `chromeRendererMaxPssKb` | {'int': 216} |
| `chromeRendererPssKb` | {'int': 216} |
| `chromeRenderers` | {'int': 216} |
| `chromeTabs` | {'int': 216} |
| `chromeTabsProbedProfiles` | {'int': 216} |
| `chromeUtilityPssKb` | {'int': 216} |
| `desktopPssKb` | {'int': 216} |
| `hostPssKb` | {'int': 216} |
| `kind` | {'str': 216} |
| `memAvailableKb` | {'int': 216} |
| `memTotalKb` | {'int': 216} |
| `otherPssKb` | {'int': 216} |
| `processes` | {'int': 216} |
| `pssFallbackProcesses` | {'int': 216} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
