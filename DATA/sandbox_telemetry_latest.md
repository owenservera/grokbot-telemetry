# sandbox_telemetry_parse — 2026-10-06 00:29:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=44426 lines=102
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 97 |
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
| `chromeBrowserPssKb` | {'int': 97} |
| `chromeGpuPssKb` | {'int': 97} |
| `chromeOtherPssKb` | {'int': 97} |
| `chromeProcesses` | {'int': 97} |
| `chromeProfiles` | {'int': 97} |
| `chromeRendererMaxPssKb` | {'int': 97} |
| `chromeRendererPssKb` | {'int': 97} |
| `chromeRenderers` | {'int': 97} |
| `chromeTabs` | {'int': 97} |
| `chromeTabsProbedProfiles` | {'int': 97} |
| `chromeUtilityPssKb` | {'int': 97} |
| `desktopPssKb` | {'int': 97} |
| `hostPssKb` | {'int': 97} |
| `kind` | {'str': 97} |
| `memAvailableKb` | {'int': 97} |
| `memTotalKb` | {'int': 97} |
| `otherPssKb` | {'int': 97} |
| `processes` | {'int': 97} |
| `pssFallbackProcesses` | {'int': 97} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
