# sandbox_telemetry_parse — 2026-10-26 19:54:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=108648 lines=244
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 239 |
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
| `chromeBrowserPssKb` | {'int': 239} |
| `chromeGpuPssKb` | {'int': 239} |
| `chromeOtherPssKb` | {'int': 239} |
| `chromeProcesses` | {'int': 239} |
| `chromeProfiles` | {'int': 239} |
| `chromeRendererMaxPssKb` | {'int': 239} |
| `chromeRendererPssKb` | {'int': 239} |
| `chromeRenderers` | {'int': 239} |
| `chromeTabs` | {'int': 239} |
| `chromeTabsProbedProfiles` | {'int': 239} |
| `chromeUtilityPssKb` | {'int': 239} |
| `desktopPssKb` | {'int': 239} |
| `hostPssKb` | {'int': 239} |
| `kind` | {'str': 239} |
| `memAvailableKb` | {'int': 239} |
| `memTotalKb` | {'int': 239} |
| `otherPssKb` | {'int': 239} |
| `processes` | {'int': 239} |
| `pssFallbackProcesses` | {'int': 239} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
