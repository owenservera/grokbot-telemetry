# sandbox_telemetry_parse — 2026-10-13 03:44:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=795016 lines=1857
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1694 |
| `chrome_profile_sample` | 155 |
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
| `chromeBrowserPssKb` | {'int': 1694} |
| `chromeGpuPssKb` | {'int': 1694} |
| `chromeOtherPssKb` | {'int': 1694} |
| `chromeProcesses` | {'int': 1694} |
| `chromeProfiles` | {'int': 1694} |
| `chromeRendererMaxPssKb` | {'int': 1694} |
| `chromeRendererPssKb` | {'int': 1694} |
| `chromeRenderers` | {'int': 1694} |
| `chromeTabs` | {'int': 1694} |
| `chromeTabsProbedProfiles` | {'int': 1694} |
| `chromeUtilityPssKb` | {'int': 1694} |
| `desktopPssKb` | {'int': 1694} |
| `hostPssKb` | {'int': 1694} |
| `kind` | {'str': 1694} |
| `memAvailableKb` | {'int': 1694} |
| `memTotalKb` | {'int': 1694} |
| `otherPssKb` | {'int': 1694} |
| `processes` | {'int': 1694} |
| `pssFallbackProcesses` | {'int': 1694} |

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
| `cpuMillicores` | {'int': 154} |
| `display` | {'int': 155} |
| `kind` | {'str': 155} |
| `processes` | {'int': 155} |
| `pssKb` | {'int': 155} |
| `rendererMaxPssKb` | {'int': 155} |
| `renderers` | {'int': 155} |
| `tabs` | {'int': 155} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
