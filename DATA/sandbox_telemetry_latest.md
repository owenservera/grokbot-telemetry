# sandbox_telemetry_parse — 2026-10-15 18:28:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=993414 lines=2202
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2197 |
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
| `chromeBrowserPssKb` | {'int': 2197} |
| `chromeGpuPssKb` | {'int': 2197} |
| `chromeOtherPssKb` | {'int': 2197} |
| `chromeProcesses` | {'int': 2197} |
| `chromeProfiles` | {'int': 2197} |
| `chromeRendererMaxPssKb` | {'int': 2197} |
| `chromeRendererPssKb` | {'int': 2197} |
| `chromeRenderers` | {'int': 2197} |
| `chromeTabs` | {'int': 2197} |
| `chromeTabsProbedProfiles` | {'int': 2197} |
| `chromeUtilityPssKb` | {'int': 2197} |
| `desktopPssKb` | {'int': 2197} |
| `hostPssKb` | {'int': 2197} |
| `kind` | {'str': 2197} |
| `memAvailableKb` | {'int': 2197} |
| `memTotalKb` | {'int': 2197} |
| `otherPssKb` | {'int': 2197} |
| `processes` | {'int': 2197} |
| `pssFallbackProcesses` | {'int': 2197} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
