# sandbox_telemetry_parse — 2026-10-13 08:28:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=948402 lines=2339
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1935 |
| `chrome_profile_sample` | 396 |
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
| `chromeBrowserPssKb` | {'int': 1935} |
| `chromeGpuPssKb` | {'int': 1935} |
| `chromeOtherPssKb` | {'int': 1935} |
| `chromeProcesses` | {'int': 1935} |
| `chromeProfiles` | {'int': 1935} |
| `chromeRendererMaxPssKb` | {'int': 1935} |
| `chromeRendererPssKb` | {'int': 1935} |
| `chromeRenderers` | {'int': 1935} |
| `chromeTabs` | {'int': 1935} |
| `chromeTabsProbedProfiles` | {'int': 1935} |
| `chromeUtilityPssKb` | {'int': 1935} |
| `desktopPssKb` | {'int': 1935} |
| `hostPssKb` | {'int': 1935} |
| `kind` | {'str': 1935} |
| `memAvailableKb` | {'int': 1935} |
| `memTotalKb` | {'int': 1935} |
| `otherPssKb` | {'int': 1935} |
| `processes` | {'int': 1935} |
| `pssFallbackProcesses` | {'int': 1935} |

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
| `cpuMillicores` | {'int': 395} |
| `display` | {'int': 396} |
| `kind` | {'str': 396} |
| `processes` | {'int': 396} |
| `pssKb` | {'int': 396} |
| `rendererMaxPssKb` | {'int': 396} |
| `renderers` | {'int': 396} |
| `tabs` | {'int': 396} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
