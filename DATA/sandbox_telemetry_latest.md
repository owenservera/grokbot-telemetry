# sandbox_telemetry_parse — 2026-10-13 12:41:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1080905 lines=2755
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2143 |
| `chrome_profile_sample` | 604 |
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
| `chromeBrowserPssKb` | {'int': 2143} |
| `chromeGpuPssKb` | {'int': 2143} |
| `chromeOtherPssKb` | {'int': 2143} |
| `chromeProcesses` | {'int': 2143} |
| `chromeProfiles` | {'int': 2143} |
| `chromeRendererMaxPssKb` | {'int': 2143} |
| `chromeRendererPssKb` | {'int': 2143} |
| `chromeRenderers` | {'int': 2143} |
| `chromeTabs` | {'int': 2143} |
| `chromeTabsProbedProfiles` | {'int': 2143} |
| `chromeUtilityPssKb` | {'int': 2143} |
| `desktopPssKb` | {'int': 2143} |
| `hostPssKb` | {'int': 2143} |
| `kind` | {'str': 2143} |
| `memAvailableKb` | {'int': 2143} |
| `memTotalKb` | {'int': 2143} |
| `otherPssKb` | {'int': 2143} |
| `processes` | {'int': 2143} |
| `pssFallbackProcesses` | {'int': 2143} |

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
| `cpuMillicores` | {'int': 603} |
| `display` | {'int': 604} |
| `kind` | {'str': 604} |
| `processes` | {'int': 604} |
| `pssKb` | {'int': 604} |
| `rendererMaxPssKb` | {'int': 604} |
| `renderers` | {'int': 604} |
| `tabs` | {'int': 604} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
