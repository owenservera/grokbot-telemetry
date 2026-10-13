# sandbox_telemetry_parse — 2026-10-13 09:47:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=991034 lines=2473
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2002 |
| `chrome_profile_sample` | 463 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2002} |
| `chromeGpuPssKb` | {'int': 2002} |
| `chromeOtherPssKb` | {'int': 2002} |
| `chromeProcesses` | {'int': 2002} |
| `chromeProfiles` | {'int': 2002} |
| `chromeRendererMaxPssKb` | {'int': 2002} |
| `chromeRendererPssKb` | {'int': 2002} |
| `chromeRenderers` | {'int': 2002} |
| `chromeTabs` | {'int': 2002} |
| `chromeTabsProbedProfiles` | {'int': 2002} |
| `chromeUtilityPssKb` | {'int': 2002} |
| `desktopPssKb` | {'int': 2002} |
| `hostPssKb` | {'int': 2002} |
| `kind` | {'str': 2002} |
| `memAvailableKb` | {'int': 2002} |
| `memTotalKb` | {'int': 2002} |
| `otherPssKb` | {'int': 2002} |
| `processes` | {'int': 2002} |
| `pssFallbackProcesses` | {'int': 2002} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 462} |
| `display` | {'int': 463} |
| `kind` | {'str': 463} |
| `processes` | {'int': 463} |
| `pssKb` | {'int': 463} |
| `rendererMaxPssKb` | {'int': 463} |
| `renderers` | {'int': 463} |
| `tabs` | {'int': 463} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
