# sandbox_telemetry_parse — 2026-10-27 10:58:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=478333 lines=1061
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1056 |
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
| `chromeBrowserPssKb` | {'int': 1056} |
| `chromeGpuPssKb` | {'int': 1056} |
| `chromeOtherPssKb` | {'int': 1056} |
| `chromeProcesses` | {'int': 1056} |
| `chromeProfiles` | {'int': 1056} |
| `chromeRendererMaxPssKb` | {'int': 1056} |
| `chromeRendererPssKb` | {'int': 1056} |
| `chromeRenderers` | {'int': 1056} |
| `chromeTabs` | {'int': 1056} |
| `chromeTabsProbedProfiles` | {'int': 1056} |
| `chromeUtilityPssKb` | {'int': 1056} |
| `desktopPssKb` | {'int': 1056} |
| `hostPssKb` | {'int': 1056} |
| `kind` | {'str': 1056} |
| `memAvailableKb` | {'int': 1056} |
| `memTotalKb` | {'int': 1056} |
| `otherPssKb` | {'int': 1056} |
| `processes` | {'int': 1056} |
| `pssFallbackProcesses` | {'int': 1056} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
