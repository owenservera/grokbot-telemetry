# sandbox_telemetry_parse — 2026-10-17 00:04:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=942722 lines=3523
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2336 |
| `memory_sample` | 1178 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 1178} |
| `chromeGpuPssKb` | {'int': 1178} |
| `chromeOtherPssKb` | {'int': 1178} |
| `chromeProcesses` | {'int': 1178} |
| `chromeProfiles` | {'int': 1178} |
| `chromeRendererMaxPssKb` | {'int': 1178} |
| `chromeRendererPssKb` | {'int': 1178} |
| `chromeRenderers` | {'int': 1178} |
| `chromeTabs` | {'int': 1178} |
| `chromeTabsProbedProfiles` | {'int': 1178} |
| `chromeUtilityPssKb` | {'int': 1178} |
| `desktopPssKb` | {'int': 1178} |
| `hostPssKb` | {'int': 1178} |
| `kind` | {'str': 1178} |
| `memAvailableKb` | {'int': 1178} |
| `memTotalKb` | {'int': 1178} |
| `otherPssKb` | {'int': 1178} |
| `processes` | {'int': 1178} |
| `pssFallbackProcesses` | {'int': 1178} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 2333} |
| `display` | {'int': 2336} |
| `kind` | {'str': 2336} |
| `processes` | {'int': 2336} |
| `pssKb` | {'int': 2336} |
| `rendererMaxPssKb` | {'int': 2336} |
| `renderers` | {'int': 2336} |
| `tabs` | {'int': 2335} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
