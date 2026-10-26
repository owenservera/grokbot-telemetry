# sandbox_telemetry_parse — 2026-10-27 00:52:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=234582 lines=522
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 517 |
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
| `chromeBrowserPssKb` | {'int': 517} |
| `chromeGpuPssKb` | {'int': 517} |
| `chromeOtherPssKb` | {'int': 517} |
| `chromeProcesses` | {'int': 517} |
| `chromeProfiles` | {'int': 517} |
| `chromeRendererMaxPssKb` | {'int': 517} |
| `chromeRendererPssKb` | {'int': 517} |
| `chromeRenderers` | {'int': 517} |
| `chromeTabs` | {'int': 517} |
| `chromeTabsProbedProfiles` | {'int': 517} |
| `chromeUtilityPssKb` | {'int': 517} |
| `desktopPssKb` | {'int': 517} |
| `hostPssKb` | {'int': 517} |
| `kind` | {'str': 517} |
| `memAvailableKb` | {'int': 517} |
| `memTotalKb` | {'int': 517} |
| `otherPssKb` | {'int': 517} |
| `processes` | {'int': 517} |
| `pssFallbackProcesses` | {'int': 517} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
