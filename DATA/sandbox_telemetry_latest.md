# sandbox_telemetry_parse — 2026-10-27 03:52:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=306056 lines=680
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 675 |
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
| `chromeBrowserPssKb` | {'int': 675} |
| `chromeGpuPssKb` | {'int': 675} |
| `chromeOtherPssKb` | {'int': 675} |
| `chromeProcesses` | {'int': 675} |
| `chromeProfiles` | {'int': 675} |
| `chromeRendererMaxPssKb` | {'int': 675} |
| `chromeRendererPssKb` | {'int': 675} |
| `chromeRenderers` | {'int': 675} |
| `chromeTabs` | {'int': 675} |
| `chromeTabsProbedProfiles` | {'int': 675} |
| `chromeUtilityPssKb` | {'int': 675} |
| `desktopPssKb` | {'int': 675} |
| `hostPssKb` | {'int': 675} |
| `kind` | {'str': 675} |
| `memAvailableKb` | {'int': 675} |
| `memTotalKb` | {'int': 675} |
| `otherPssKb` | {'int': 675} |
| `processes` | {'int': 675} |
| `pssFallbackProcesses` | {'int': 675} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
